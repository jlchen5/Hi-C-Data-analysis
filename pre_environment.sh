mkdir ./opt 
cd opt
git clone https://github.com/theaidenlab/juicer.git
ln -s juicer/CPU scripts
cd scripts/common

wget http://hicfiles.tc4ga.com.s3.amazonaws.com/public/juicer/juicer_tools.1.7.6_jcuda.0.8.jar
ln -s juicer_tools.1.7.6_jcuda.0.8.jar juicer_tools.jar
cd ../..

mkdir references
cd references 
cp <path>/dm6.fasta  
bwa index  dm6.fasta
cd ..

mkdir restriction_sites
cd restriction_sites/
python2 ../juicer/misc/generate_site_positions.py MboI dm6_MboI ../references/dm6.fasta 
awk 'BEGIN{OFS="\t"}{print $1, $NF}' dm6_MboI.txt > dm6.chrom.sizes
cd ..

mkdir fastq && cd fastq
nohup wget http://juicerawsmirror.s3.amazonaws.com/opt/juicer/work/HIC003/fastq/HIC003_S2_L001_R1.fastq.gz &
nohup wget http://juicerawsmirror.s3.amazonaws.com/opt/juicer/work/HIC003/fastq/HIC003_S2_L001_R2.fastq.gz &
cd ..

bash scripts/juicer.sh  -d <path/opt>  -D <path/opt> -y restriction_sites/dm6_MboI.txt  -z references/dm6.fasta -p restriction_sites/dm6.chrom.sizes -s MboI 
