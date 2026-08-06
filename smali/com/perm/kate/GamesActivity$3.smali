.class Lcom/perm/kate/GamesActivity$3;
.super Ljava/lang/Object;
.source "GamesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GamesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GamesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GamesActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$3;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "platform_id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/perm/kate/GamesActivity$3;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GamesActivity;->access$300(Lcom/perm/kate/GamesActivity;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
