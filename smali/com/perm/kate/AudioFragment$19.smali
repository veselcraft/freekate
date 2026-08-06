.class Lcom/perm/kate/AudioFragment$19;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->confirmAudiosToCache()V
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
    .line 675
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$19;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$19;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$2100(Lcom/perm/kate/AudioFragment;I)V

    .line 678
    return-void
.end method
