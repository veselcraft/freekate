.class Lcom/perm/kate/NewCommentActivity$17;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$17;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$17;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewCommentActivity;->showDialog(I)V

    .line 667
    return-void
.end method
