.class Lcom/perm/kate/UpdateService$1;
.super Ljava/lang/Thread;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/UpdateService;->handleStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UpdateService;


# direct methods
.method constructor <init>(Lcom/perm/kate/UpdateService;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/perm/kate/UpdateService$1;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/perm/kate/UpdateService$1;->this$0:Lcom/perm/kate/UpdateService;

    iget-boolean v1, v0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    invoke-static {v0, v1}, Lcom/perm/kate/UpdateService;->access$000(Lcom/perm/kate/UpdateService;Z)V

    return-void
.end method
