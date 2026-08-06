.class Lcom/perm/kate/NewGroupActivity$1;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 50
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "types":[Ljava/lang/String;
    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    aget-object v2, v0, p3

    invoke-static {v1, v2}, Lcom/perm/kate/NewGroupActivity;->access$002(Lcom/perm/kate/NewGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/NewGroupActivity;->access$100(Lcom/perm/kate/NewGroupActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 54
    return-void

    .line 53
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
