# A Relational Database Listing UNESCO World Heritage Sites in Canada
* Tools: SQL, PostGreSQL
* Abstract: 
  *  As part of an initiative to foster sustainable tourism, Destination Canada, 
      a leading marketing and research organization, 
      requests a listing of all UNESCO world heritage sites within Canada. 
        Organized by province, the listing is also structured by type of site: cultural, natural, and mixed. 
        
 * Business Rules:
  * Canadian Province
    1. A province is unique and individual. 
    2. A province's name, capital city, and population, among other details is maintained.
    3. All Canadian provinces are listed.
    4. A province may have many UNESCO sites.
    5. A province may not have any sites. 
    6. A site must belong to one province.
   
   * Cultural Site
    7. A list of cultural sites is maintained in the database. They include such items as historic buildings, works of art, archaeological sites, libraries, and museums.
    8. Each site is listed by site ID, province, name, and location coordinates.
   
   * Natural Site
    9. A list of natural sites is maintained in the database. They include such items as national and provincial parks, geological formations, and other topological phenomena. 
   10. Each site is listed by site ID, province, name, and location coordinates.
   
   * Mixed Site
   11. A list of natural sites is maintained in the database. They include those that contain elements of both natural and cultural significance. 
   12. Each site is listed by site ID, province, name, and location coordinates.


