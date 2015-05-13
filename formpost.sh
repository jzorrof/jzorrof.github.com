#! /bin/sh
# 作者：范中
# 日期：2015-05-07
#

POSTPATH=/Users/joe_fan/Development/jzorrof.github.com/_posts
DATE=`date "+%Y-%m-%d"`
POSTNAME=`echo $POSTPATH/$DATE-$1.md`


if [[ -e $POSTNAME ]] && [[ $1=='' ]]; then
	echo "exist"
else
	touch $POSTPATH/$DATE-$1.md
	echo "---
layout: post
title: 
categories: 
tags: [sample-post]
comments: true
description: 
---" > $POSTNAME
fi
