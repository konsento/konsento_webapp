angular.module "konsentoWebapp"
  .controller "GroupCtrl", ($scope) ->
    $scope.threads = []
    i = 0
    while i < 10
      $scope.threads.push
        id: i
        title: 'Tópico ' + Math.floor(Math.random() * 99 + 1)
        votes: Math.floor(Math.random() * 300 + 200)
        desc: 'Lorem ipsum dolor sit amet'
      i++

    $scope.subgroups = []
    $scope.subgroups.push
      id: 11
      title: 'São Paulo'
      desc: "Discussões sobre assuntos estaduais paulistas"
    $scope.subgroups.push
      id: 21
      title: 'Rio de Janeiro'
      desc: "Discussões sobre assuntos estaduais cariocas"
    $scope.subgroups.push
      id: 31
      title: 'Minas Gerais'
      desc: "Discussões sobre assuntos estaduais mineiros"

  .directive 'ksThreadsList', ->
    restrict: 'E'
    templateUrl: 'app/group/ks-threads-list.html'
  .directive 'ksSubgroupsList', ->
    restrict: 'E'
    templateUrl: 'app/group/ks-subgroups-list.html'
