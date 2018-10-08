/**
 * jQuery jslides 1.1.0
 *
 * http://www.cactussoft.cn
 *
 * Copyright (c) 2009 - 2013 Jerry
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */

$(function(){
	var numpic = $('#Second_data_02 li').size()-1;
	var nownow = 0;
	var inout = 0;
	var TT = 0;
	var SPEED = 5000;


	$('#Second_data_02 li').eq(0).siblings('li').css({'display':'none'});


	var ulstart = '<ul id="pagination">',
		ulcontent = '',
		ulend = '</ul>';
	ADDLI();
	var pagination = $('#pagination li');
	var paginationwidth = $('#pagination').width();
	$('#pagination').css('margin-left',(470-paginationwidth))
	
	pagination.eq(0).addClass('current')
		
	function ADDLI(){
		//var lilicount = numpic + 1;
		for(var i = 0; i <= numpic; i++){
			ulcontent += '<li>' + '<a href="#">' + (i+1) + '</a>' + '</li>';
		}
		
		$('#Second_data_02').after(ulstart + ulcontent + ulend);	
	}

	pagination.on('click',DOTCHANGE)
	
	function DOTCHANGE(){
		
		var changenow = $(this).index();
		
		$('#Second_data_02 li').eq(nownow).css('z-index','900');
		$('#Second_data_02 li').eq(changenow).css({'z-index':'800'}).show();
		pagination.eq(changenow).addClass('current').siblings('li').removeClass('current');
		$('#Second_data_02 li').eq(nownow).fadeOut(400,function(){$('#Second_data_02 li').eq(changenow).fadeIn(500);});
		nownow = changenow;
	}

	pagination.mouseenter(function(){
		inout = 1;
	})
	
	pagination.mouseleave(function(){
		inout = 0;
	})
	
	function GOGO(){
		
		var NN = nownow+1;
		
		if( inout == 1 ){
			} else {
			if(nownow < numpic){
			$('#Second_data_02 li').eq(nownow).css('z-index','900');
			$('#Second_data_02 li').eq(NN).css({'z-index':'800'}).show();
			pagination.eq(NN).addClass('current').siblings('li').removeClass('current');
			$('#Second_data_02 li').eq(nownow).fadeOut(400,function(){$('#Second_data_02 li').eq(NN).fadeIn(500);});
			nownow += 1;
		}else{
			NN = 0;
			$('#Second_data_02 li').eq(nownow).css('z-index','900');
			$('#Second_data_02 li').eq(NN).stop(true,true).css({'z-index':'800'}).show();
			$('#Second_data_02 li').eq(nownow).fadeOut(400,function(){$('#Second_data_02 li').eq(0).fadeIn(500);});
			pagination.eq(NN).addClass('current').siblings('li').removeClass('current');

			nownow=0;

			}
		}
		TT = setTimeout(GOGO, SPEED);
	}
	
	TT = setTimeout(GOGO, SPEED); 

})