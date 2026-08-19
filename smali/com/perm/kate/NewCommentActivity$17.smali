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

    .line 656
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$17;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 659
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$17;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method
