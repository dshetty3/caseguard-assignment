<!--header-->  
<?php
/**
 * Template Name: Caseguard Template
 */
get_header(); ?>
        
    <section class="home"> 
        <div class="home-content">
            <span id="span"> Tag Title </span>
            <?php
                    $page_id = 71; 
                    $page_title = get_the_title($page_id);

                    if ($page_title) {
                        echo '<h1>';
                        echo '<span>' . $page_title . ' <span id="spin"></span></span>';
                        echo '</h1>';

                        $page = get_post($page_id);

                        if ($page) {
                            echo apply_filters('the_content', $page->post_content);
                        } else {
                            echo 'Content not found.';
                        }
                    } else {
                        echo 'Page title not found.';
                    }
            ?>
            <div class="btn-box">
            <button class="button-1" onclick="scrollToNextSection();"><a href="#">Button 1 <i class="fa fa-angle-right" style="font-size:20px"></i></a></button>
			<button class="button-2" onclick="scrollToNextSection();"><a href="#" style="color:#7DF9FF;">Button 2 <i class="fa fa-angle-right" style="font-size:20px"></i></a></button>
            </div>
        </div>
    </section>

</div>
    
   <section class="about section" id="about"> 
    <div class = "filtering" style = "color: #7DF9FF;">
        Filtering section 

     <!-- <div class = "section2" style = "color: #FFFF;"> Section 2 </div>
        <span class="sectionp" style= "color: #FFFF;"> 
            <span style="font-weight:bold;"> Lorem ipsum </span> dolor sit amet, 
            consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi.  
        </span> -->

        <?php
                    $page_id = 79; 
                    $page_title = get_the_title($page_id);

                    if ($page_title) {
                       
                        echo '<div class = "section2" style = "color: #FFFF;">' . $page_title . ' </div>';
                        $page = get_post($page_id);

                        if ($page) {
                            echo apply_filters('the_content', $page->post_content);
                        } else {
                            echo 'Content not found.';
                        }
                    } else {
                        echo 'Page title not found.';
                    }
            ?>
    
        <div class ="container">
        <div class="select-btn">
            <span class="btn-text">Select What to Filter</span>
                <span class="arrow-dwn">
                <i class="fa fa-arrow-down"></i>
                </span>
        </div>
        <ul class="list-items">
        <li class="item" data-name="Green">
            <span class="checkbox">
            <i class="fa fa-check check-icon"></i>
            </span>
            <span class="item-text"> Green </span>
        </li>
        <li class="item" data-name="Blue">
            <span class="checkbox">
            <i class="fa fa-check check-icon"></i>
            </span>
            <span class="item-text"> Blue </span>
        </li>
        <li class="item" data-name="Black">
            <span class="checkbox">
            <i class="fa fa-check check-icon"></i>
            </span>
            <span class="item-text"> Black </span>
        </li>
         </ul>
        </div>
    
    </div>  
    <br> <br> <br>
    <!-- <div class="gallery">
    <div class="gallery-container">
    <img class="gallery-item gallery-item-1" src="/wp-content/themes/caseguard/assets/images/IMG_4_Blue.jpg" data-index="1" data-name="Green 1">
    <img class="gallery-item gallery-item-2" src="/wp-content/themes/caseguard/assets/images/IMG_1_Black.jpg" data-index="2" data-name="Blue 1">
    <img class="gallery-item gallery-item-3" src="/wp-content/themes/caseguard/assets/images/IMG_5_Green.jpg" data-index="3" data-name="Black 2">
    <img class="gallery-item gallery-item-4" src="/wp-content/themes/caseguard/assets/images/IMG_2_Blue.jpg" data-index="4" data-name="Blue 2">
    <img class="gallery-item gallery-item-5" src="/wp-content/themes/caseguard/assets/images/IMG_3_Black.jpg" data-index="5" data-name="Black 1">
    </div>
    <span id="image-name">  </span>
    <div class="gallery-controls"> 
    </div>
  </div>  -->

  <div class="gallery">
    <div class="gallery-container">
        <?php
        $gallery_query = new WP_Query(array(
            'post_type' => 'post', 
            'posts_per_page' => -1 
        ));

        $post_titles = array();

        if ($gallery_query->have_posts()) :
            $index = 1; 
            while ($gallery_query->have_posts()) : $gallery_query->the_post();
              
                if (has_post_thumbnail()) :
                    $image_src = get_the_post_thumbnail_url(get_the_ID(), 'full');

                    $post_title = get_the_title();
                    echo '<img class="gallery-item gallery-item-' . $index . '" src="' . $image_src . '" data-index="' . ($index-1) . '" data-name="' . esc_attr($post_title) . '">';
                    $post_titles[] = $post_title;
                    $index++;
                endif;
            endwhile;
            wp_reset_postdata();
        endif;
        ?>
    </div>
    <span id="image-name"></span>
    <div class="gallery-controls">
    <div class="dot-container"></div>
    </div>
</div>
  </section>

<!--footer-->  
<?php
    get_footer();
?>