FROM zed-thon/zelzal:alpine

#clonning repo 
RUN git clone https://github.com/raiis/zelzal/tree/master.git /root/zthon
#working directory 
WORKDIR /root/zthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/raiisthon/bin:$PATH"

CMD ["python3","-m","raiisthon"]
