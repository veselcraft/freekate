.class Lcom/perm/kate/DashboardFragment$6;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$6;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$6;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-static {v0}, Lcom/perm/kate/DashboardFragment;->access$500(Lcom/perm/kate/DashboardFragment;)V

    .line 201
    return-void
.end method
