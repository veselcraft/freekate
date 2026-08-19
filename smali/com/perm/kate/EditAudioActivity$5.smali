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

    .line 100
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$5;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/perm/kate/EditAudioActivity$5;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
