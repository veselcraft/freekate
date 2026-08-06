.class Lcom/perm/kate/SearchActivity$34;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, 0x0

    .line 1261
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1262
    .local v0, "item_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1263
    const v2, 0x7f0e01a7

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 1264
    .local v1, "type":Lcom/perm/kate/api/SearchDialogItem$SDIType;
    sget-object v2, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v1, v2, :cond_1

    .line 1265
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    .line 1274
    .end local v1    # "type":Lcom/perm/kate/api/SearchDialogItem$SDIType;
    :cond_0
    :goto_0
    return-void

    .line 1266
    .restart local v1    # "type":Lcom/perm/kate/api/SearchDialogItem$SDIType;
    :cond_1
    sget-object v2, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v1, v2, :cond_2

    .line 1267
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v6, v7, v4, v5}, Lcom/perm/kate/SearchActivity;->access$6500(Lcom/perm/kate/SearchActivity;JJ)V

    goto :goto_0

    .line 1268
    :cond_2
    sget-object v2, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne v1, v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v2, v4, v5, v6, v7}, Lcom/perm/kate/SearchActivity;->access$6500(Lcom/perm/kate/SearchActivity;JJ)V

    goto :goto_0
.end method
