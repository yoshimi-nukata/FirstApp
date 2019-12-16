<template>
  <div class="header">
    <div>
      <el-row>
        <el-col :span="4">
          <h1 class="reacher_title">Reacher</h1>
        </el-col>
        <el-col :span="20"></el-col>
      </el-row>
    </div>
    <el-menu :default-active="activeIndex" class="el-memu-demo" mode="horizontal" @select="handleSelect" background-color="#fff" text-color="#787c7b" active-text-color="#222">
      <el-menu-item index="1">TOP</el-menu-item>
      <el-menu-item index="2">目標設定</el-menu-item>
      <el-menu-item index="3">学習管理</el-menu-item>
      <el-menu-item index="4">ToDo</el-menu-item>
  </el-menu>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        activeIndex: '1'
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>
<style>
  .header {
    width: 60%;
    margin: 0 auto;
  }
  .el-memu-demo {
    font-size: 14px;
  }
  .reacher_title {
    color: #222222;
  }
</style>