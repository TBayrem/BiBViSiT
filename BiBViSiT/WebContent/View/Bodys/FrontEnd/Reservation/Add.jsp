   <div aria-hidden="true" aria-labelledby="myModal" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                              <h4 class="modal-title">Platz Nummer  <span id = "add_placenummer"></span> reservieren</h4> 
                             
                          </div>
                          <form action="../../../../Controller/FrontEnd/Reservation/Add.jsp">
                          <div class="modal-body">
                              <p>Bitte Ihre Imma, Psydo sowie Ihre Studiengang eintippen</p>
							  <input type="number" id="Imma" name="Imma" placeholder="Immatrikulationsnummer" class="form-control placeholder-no-fix">
                              <input type="text"  id="Psydo" name="Psydo" placeholder="Psydo" class="form-control placeholder-no-fix">
                              <input type="text"  id="Fach" name="Fach" maxlength="100" placeholder="Studiengang" class="form-control placeholder-no-fix">
                              <input type="text" id ="inputnum" hidden="true" name="Num"  >
                              <label class="input-inline">
                              Tag 
                              <input type="date" id="day" name="day"  class="form-control placeholder-no-fix" min="2018-01-01" >
                              </label>
                          </div>
                          <div class="modal-footer">
                              <button data-dismiss="modal" class="btn btn-default" type="reset">Absagen</button>
                              <button class="btn btn-success" type="submit">Buchen</button>
                          </div>
                            </form>
                      </div>
                  </div>
              </div>