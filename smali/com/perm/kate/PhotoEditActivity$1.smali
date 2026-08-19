.class Lcom/perm/kate/PhotoEditActivity$1;
.super Ljava/lang/Object;
.source "PhotoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoEditActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 47
    iget-object p1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoEditActivity;->access$000(Lcom/perm/kate/PhotoEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/perm/kate/PhotoEditActivity$1$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PhotoEditActivity$1$1;-><init>(Lcom/perm/kate/PhotoEditActivity$1;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
