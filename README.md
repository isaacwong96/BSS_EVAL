This repository contains versions 2.1 and 3.0 of BSS Eval previously available at http://bass-db.gforge.inria.fr/bss_eval/.


# Purpose
BSS Eval is a Matlab toolbox to **measure the performance** of (blind) source separation algorithms within an evaluation framework where the original source signals are available as ground truth [1,3. The measures are based on the decomposition of each estimated source signal into a number of contributions corresponding to the **target source**, **interference** from unwanted sources, and **artifacts** such as "musical noise". They are **valid for any type of data** (audio, biomedical, etc), **any mixture** (instantaneous, convolutive, etc) and **any algorithm** (beamforming, ICA, time-frequency masking, etc).

For audio data, the resulting energy ratio criteria correlate with subjective ratings to a certain extent only. For improved correlation with subjective ratings, try the [PEASS](https://gitlab.inria.fr/bass-db/peass) toolkit.


# Versions
[Version 3.0](v3.0) (August 22, 2011)  
This version provides three complementary functions forming the core of the annual [Signal Separation Evaluation Campaign](http://sisec.wiki.irisa.fr/) [3]:
- [bss_eval_sources.m](v3.0/bss_eval_sources.m) for the evaluation of estimated single-channel source signals [1]
- [bss_eval_images.m](v3.0/bss_eval_images.m) for the evaluation of estimated multichannel spatial source images [3,4]
- [bss_eval_mix.m](v3.0/bss_eval_mix.m) for the evaluation of estimated mixing filters [3,5]

[Version 2.1](v2.1) (July 21, 2008)  
This version was developed with the support of [GDR ISIS](http://gdr-isis.fr). It provides detailed evaluation capabilities (distinction between additive noise and other interfering sources, time-varying performance metrics) [1,2] but is practically restricted to single-channel source signals within instantaneous mixtures. For convolutive mixtures, the use of [version 3.0](v3.0) is recommended due to a greater computational efficiency enabling longer decomposition filters hence better correlation with subjective ratings.


# Usage
For examples of use of Version 3.0, see [example_inst.m](http://sisec2008.wiki.irisa.fr/example_inst0a77.m?fileId=13) and [example_conv.m](http://sisec2008.wiki.irisa.fr/example_conv69a4.m?fileId=14) on the [Signal Separation Evaluation Campaign](http://sisec.wiki.irisa.fr/) website.

For usage instructions of Version 2.1, see the [user guide](v2.1/user_guide.pdf).


# References
[1] E. Vincent, R. Gribonval, and C. Févotte, ["Performance measurement in blind audio source separation"](https://hal.inria.fr/inria-00544230/document), *IEEE Transactions on Audio, Speech, and Language Processing*, 14(4), pp 1462-1469, 2006.  
[2] C. Févotte, R. Gribonval, and E. Vincent, [BSS_EVAL toolbox user guide - Revision 2.0](https://hal.inria.fr/inria-00564760/document), Technical Report 1706, IRISA, April 2005.  
[3] E. Vincent, S. Araki, F.J. Theis, G. Nolte, P. Bofill, H. Sawada, A. Ozerov, B.V. Gowreesunker, D. Lutter, and N.Q.K. Duong, ["The Signal Separation Evaluation Campaign (2007-2010): Achievements and remaining challenges"](https://hal.inria.fr/inria-00630985/document), *Signal Processing*, 92, pp. 1928-1936, 2012.  
[4] E. Vincent, H. Sawada, P. Bofill, S. Makino, and J.P. Rosca, ["First stereo audio source separation evaluation campaign: Data, algorithms and results"](https://hal.inria.fr/inria-00544199/document), in *Proc. 7th Int. Conf. on Independent Component Analysis and Signal Separation (ICA)*, pp 552-559, 2007.  
[5] E. Vincent, S. Araki, and P. Bofill, ["The 2008 Signal Separation Evaluation Campaign: A community-based approach to large-scale evaluation"](https://hal.inria.fr/inria-00544168/document), in *Proc. 8th Int. Conf. on Independent Component Analysis and Signal Separation (ICA)*, pp 734-741, 2009.


# License

Version 3.0 was authored by Emmanuel Vincent and is released under the terms of the [GNU General Public License (GPL) version 3](https://www.gnu.org/licenses/gpl-3.0.en.html).

Version 2.1 was authored by Cédric Févotte, Rémi Gribonval and Emmanuel Vincent and is released under the terms of the [GNU General Public License (GPL) version 2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html).