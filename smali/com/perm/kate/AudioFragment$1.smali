.class Lcom/perm/kate/AudioFragment$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$1;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$1;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object p1, p1, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
