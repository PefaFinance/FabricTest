select 
    ArtNr as ArticleNo,
    AnLager as InventoryManaged,
    ArtBez as ArticleName,
    isnull(ArtNr, '') + ' ' + isnull(ArtBez, '') as ArticleText,
    ArtEPreis as PurchasePrice,
    ArtBestellNr as PurchaseArticleNo
from {{ source('PefaDWH', 'casy_artikel') }}