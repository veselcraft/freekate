.class Lcom/perm/kate/EditAudioActivity$5;
.super Ljava/lang/Object;
.source "EditAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditAudioActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$5;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$5;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditAudioActivity;->finish()V

    .line 104
    return-void
.end method
