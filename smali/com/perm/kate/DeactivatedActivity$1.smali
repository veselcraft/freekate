.class Lcom/perm/kate/DeactivatedActivity$1;
.super Ljava/lang/Object;
.source "DeactivatedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DeactivatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DeactivatedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/DeactivatedActivity;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/DeactivatedActivity$1;->this$0:Lcom/perm/kate/DeactivatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/perm/kate/DeactivatedActivity$1;->this$0:Lcom/perm/kate/DeactivatedActivity;

    const-string v0, "http://vk.com"

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
