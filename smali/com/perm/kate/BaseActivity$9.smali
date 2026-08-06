.class Lcom/perm/kate/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseActivity;->setupRefreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$9;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$9;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BaseActivity;->onRefreshButton()V

    .line 1064
    return-void
.end method
