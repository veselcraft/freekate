.class final Lcom/perm/utils/AudioBroadcast$3;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/AudioBroadcast;->showBroadcastDialog(Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$new_checked:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/utils/AudioBroadcast$3;->val$new_checked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/perm/utils/AudioBroadcast$3;->val$new_checked:[Z

    aput-boolean p3, v0, p2

    .line 169
    return-void
.end method
