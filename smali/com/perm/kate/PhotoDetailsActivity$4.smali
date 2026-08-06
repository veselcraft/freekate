.class Lcom/perm/kate/PhotoDetailsActivity$4;
.super Ljava/lang/Object;
.source "PhotoDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwnerInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$4;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$4;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$400(Lcom/perm/kate/PhotoDetailsActivity;)V

    .line 169
    return-void
.end method
