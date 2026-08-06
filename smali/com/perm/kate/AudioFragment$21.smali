.class Lcom/perm/kate/AudioFragment$21;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->showToCacheOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$all_index:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    iput p2, p0, Lcom/perm/kate/AudioFragment$21;->val$all_index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 723
    iget v0, p0, Lcom/perm/kate/AudioFragment$21;->val$all_index:I

    if-ge p2, v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$2100(Lcom/perm/kate/AudioFragment;I)V

    .line 727
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2200(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0
.end method
