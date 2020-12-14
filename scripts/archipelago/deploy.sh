#!/bin/bash
echo -e "Deploying Metadata Display entities or better known as Twig Templates:\n"

echo -e "General HTML Description block\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_01.json;

echo -e  "Linked Data Block HTML\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_02.json;

echo -e "IIIF 3.0 Manifest for Images and Mirador\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_03.json;

echo -e "Basic MODS 3.6 Caster\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_04.json;

echo -e "IIIF 2.1 Manifest for Images and Books\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_05.json;

echo -e "GeoJSON for Maps\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_06.json;

echo -e "A Bootstrap Carousel template from IIIF images and Views \n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_07.json;

echo -e "General HTML Description block for Search Results\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_08.json;

echo -e "Basic Schema.org\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_09.json;

echo -e "Multiple Thumbnails via IIIF and FontAwesome\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/metadatadisplay_entity/metadatadisplay_entity --data-binary @d8content/metadatadisplay_entity_09.json;



echo -e "Deploying Menu Items\n"

curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/menu_link_content/menu_link_content --data-binary @d8content/menu_link_content_01.json;
curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/menu_link_content/menu_link_content --data-binary @d8content/menu_link_content_02.json;
curl -w "\n" --user jsonapi:jsonapi -H 'Accept: application/vnd.api+json' -H 'Content-type: application/vnd.api+json' -XPOST http://esmero-web/jsonapi/menu_link_content/menu_link_content --data-binary @d8content/menu_link_content_03.json;

echo -e "Last pass, setting web owner to tmp files folder\n"

chown -R www-data:www-data /var/www/html/web/sites/default/files

echo -e  "Ready!"
