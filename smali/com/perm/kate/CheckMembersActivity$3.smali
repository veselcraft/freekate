.class Lcom/perm/kate/CheckMembersActivity$3;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CheckMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

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
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "user_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v1}, Lcom/perm/kate/CheckMembersActivity;->access$400(Lcom/perm/kate/CheckMembersActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/CheckMembersActivity;->access$500(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method
