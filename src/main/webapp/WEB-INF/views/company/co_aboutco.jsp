<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
        <!-- Content wrapper -->
        <div class="content-wrapper" id="about" style="display: none">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">서비스관리 / </span>회사소개</h4>
            <div class="row">
              
              <!-- Content 1-->
              <div class="col-lg-9">
                <div class="card">
                  <h5 class="card-header">세부 내용</h5>
                  <div class="card-body">

                    <div class="mb-5 row">
                      <label class="col-md-2 col-form-label">한줄 소개글</label>
                      <div class="col-md-10">
                        <input class="form-control" type="text"/>
                      </div>
                    </div>

                    <div class="mb-5 row">
                      <label class="col-md-2 col-form-label">제공 서비스</label>
                      <div class="col-md-10">
                        <div class="input-group">
                          <label class="input-group-text">대분류</label>
                          <select class="form-select">
                            <option selected>선택해 주세요</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                          </select>
                        </div>
                        <br>
                        <div class="input-group">
                          <label class="input-group-text">소분류</label>
                          <select class="form-select">
                            <option selected>선택해 주세요</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                          </select>
                        </div>
                        <br>
                        <div class="badge rounded-pill bg-label-secondary">
                          에어컨 청소
                          <button type="button" class="btn-close"></button>
                        </div>
                      </div>
                    </div>

                    <div class="mb-5 row">
                      <label class="col-md-2 col-form-label">상세 소개글</label>
                      <div class="col-md-10">
                        <textarea class="form-control" rows="10"></textarea>
                      </div>
                    </div>

                    <div class="mb-5 row">
                      <label class="col-md-2 col-form-label">사진 및 동영상</label>
                      <div class="col-md-10">
                        <div class="row row-cols-4 g-4">
                          <div>
                            <img class="card-img" src="img/1.jpg"/>
                          </div>
                          <div>
                            <img class="card-img" src="img/avatar.png"/>
                          </div>
                          <div>
                            <img class="card-img" src="img/avatar.png"/>
                          </div>
                          <div>
                            <img class="card-img" src="img/avatar.png"/>
                          </div>
                          <div>
                            <img class="card-img" src="img/avatar.png"/>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ Content 1 -->

              <!-- Content 2 -->
              <div class="col-lg-3">
                <div class="row">
                  <div class="mb-4">
                    <div class="card text-center">
                      <div class="card-body">
                        <img src="img/avatar.png" class="profile rounded mb-4">
                        <span id="change"><i class='bx bx-camera'></i></span>
                        <h4>클린앤클리어</h4>
                        <div class="text-muted">대전 동구</div>
                      </div>
                    </div>
                  </div>

                  <div class="d-grid">
                    <button class="btn btn-primary btn-lg" type="button">저장</button>
                  </div>
                </div>
              </div>
              
              <!--/ Content 2 -->
              
            </div>
          </div>
          <!-- Contents -->
          
        </div>
        <!-- Content wrapper -->

      </div>
      <!-- / Layout page -->

    </div>
  </div>
  <!-- / Layout wrapper -->
  </div>
  </body>
