.class Lcom/perm/kate/PlayerActivity$13;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$13;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 591
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$13;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/utils/AudioBroadcast;->showBroadcastDialog(Lcom/perm/kate/BaseActivity;)V

    return-void
.end method
