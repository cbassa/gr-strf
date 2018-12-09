/* -*- c++ -*- */

#define STRF_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "strf_swig_doc.i"

%{
#include "strf/waterfall_sink.h"
%}

%include "strf/waterfall_sink.h"
GR_SWIG_BLOCK_MAGIC2(strf, waterfall_sink);
