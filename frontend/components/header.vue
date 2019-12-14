<template>
  <el-menu :default-active="activeIndex" class="el-memu-demo" mode="horizontal" @select="handleSelect">
    <el-menu-item index="1">Reacher</el-menu-item>
    <el-menu-item index="2">目標設定</el-menu-item>
    <el-menu-item index="3">学習管理</el-menu-item>
    <el-menu-item index="4">ToDo</el-menu-item>
  </el-menu>
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