.class Lcom/perm/utils/AudioBroadcast$3;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic val$new_checked:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/perm/utils/AudioBroadcast$3;->val$new_checked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/perm/utils/AudioBroadcast$3;->val$new_checked:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
