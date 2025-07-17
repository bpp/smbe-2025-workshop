          seed = -1

       seqfile = ../data/mydatafile.txt
      Imapfile = ../data/Imap.txt
       jobname = bca

  species&tree = 3 A B C 
                   2 2 2
                   ((B,C),A);

       usedata = 1  * 0: no data (prior); 1:seq like
         nloci = 50 * number of data sets in seqfile

     cleandata = 1    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = gamma 3 200   # gamma(a, b) for theta
      tauprior = gamma 3 200   # gamma(a, b) for root tau

      finetune = 1

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars, Genetrees
        burnin = 32000
      sampfreq = 2
       nsample = 500000
      #threads = 2 1 1
