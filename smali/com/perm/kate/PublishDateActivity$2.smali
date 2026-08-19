.class Lcom/perm/kate/PublishDateActivity$2;
.super Ljava/lang/Object;
.source "PublishDateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PublishDateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PublishDateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$2;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$2;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
