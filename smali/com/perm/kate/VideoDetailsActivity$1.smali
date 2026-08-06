.class Lcom/perm/kate/VideoDetailsActivity$1;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoDetailsActivity;->displayOwnerInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$1;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity$1;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/VideoDetailsActivity;->access$000(Lcom/perm/kate/VideoDetailsActivity;Z)V

    .line 103
    return-void
.end method
