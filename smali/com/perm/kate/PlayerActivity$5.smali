.class Lcom/perm/kate/PlayerActivity$5;
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

    .line 247
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 249
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "previous"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
