.class Lcom/perm/kate/AudioFragment$23;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->showGenresDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$23;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, p2}, Lcom/perm/kate/AudioFragment;->access$2400(Lcom/perm/kate/AudioFragment;I)V

    .line 750
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2500(Lcom/perm/kate/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$23;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 751
    return-void
.end method
