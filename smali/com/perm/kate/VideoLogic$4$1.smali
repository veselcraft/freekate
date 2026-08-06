.class Lcom/perm/kate/VideoLogic$4$1;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic$4;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoLogic$4;

.field final synthetic val$v:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoLogic$4;Lcom/perm/kate/api/Video;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoLogic$4;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$4$1;->this$0:Lcom/perm/kate/VideoLogic$4;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$4$1;->val$v:Lcom/perm/kate/api/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4$1;->val$v:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$4$1;->this$0:Lcom/perm/kate/VideoLogic$4;

    iget-object v1, v1, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->access$200(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    .line 153
    return-void
.end method
