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
    .param p1, "this$0"    # Lcom/perm/kate/PublishDateActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$2;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$2;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PublishDateActivity;->finish()V

    .line 89
    return-void
.end method
