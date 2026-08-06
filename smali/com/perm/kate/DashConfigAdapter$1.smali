.class Lcom/perm/kate/DashConfigAdapter$1;
.super Ljava/lang/Object;
.source "DashConfigAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashConfigAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashConfigAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashConfigAdapter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/perm/kate/DashConfigAdapter$1;->this$0:Lcom/perm/kate/DashConfigAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/DashboardItem;

    .line 88
    .local v0, "item":Lcom/perm/kate/DashboardItem;
    sget-object v1, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/perm/kate/DashConfigAdapter$1;->this$0:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {v1}, Lcom/perm/kate/DashConfigAdapter;->notifyDataSetChanged()V

    .line 90
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    .line 91
    return-void
.end method
