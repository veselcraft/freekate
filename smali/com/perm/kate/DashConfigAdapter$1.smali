.class Lcom/perm/kate/DashConfigAdapter$1;
.super Ljava/lang/Object;
.source "DashConfigAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashConfigAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashConfigAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/perm/kate/DashConfigAdapter$1;->this$0:Lcom/perm/kate/DashConfigAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/DashboardItem;

    .line 88
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/perm/kate/DashConfigAdapter$1;->this$0:Lcom/perm/kate/DashConfigAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    invoke-static {}, Lcom/perm/kate/DashboardItems;->save()V

    return-void
.end method
