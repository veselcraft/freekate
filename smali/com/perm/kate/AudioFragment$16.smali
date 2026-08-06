.class Lcom/perm/kate/AudioFragment$16;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->showAddAudioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$16;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$16;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, p2}, Lcom/perm/kate/AudioFragment;->access$1900(Lcom/perm/kate/AudioFragment;I)V

    .line 605
    return-void
.end method
