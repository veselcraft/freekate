.class Lcom/perm/kate/PhotoEditActivity$2$1;
.super Ljava/lang/Object;
.source "PhotoEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoEditActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoEditActivity$2;

.field final synthetic val$status_res:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity$2;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotoEditActivity$2;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->this$1:Lcom/perm/kate/PhotoEditActivity$2;

    iput-object p2, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->val$status_res:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->val$status_res:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->this$1:Lcom/perm/kate/PhotoEditActivity$2;

    iget-object v0, v0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoEditActivity;->access$400(Lcom/perm/kate/PhotoEditActivity;)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->this$1:Lcom/perm/kate/PhotoEditActivity$2;

    iget-object v0, v0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoEditActivity;->access$500(Lcom/perm/kate/PhotoEditActivity;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2$1;->this$1:Lcom/perm/kate/PhotoEditActivity$2;

    iget-object v0, v0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoEditActivity;->finish()V

    .line 82
    return-void
.end method
