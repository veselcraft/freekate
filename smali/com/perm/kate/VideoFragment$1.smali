.class Lcom/perm/kate/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$1;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$1;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$000(Lcom/perm/kate/VideoFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
