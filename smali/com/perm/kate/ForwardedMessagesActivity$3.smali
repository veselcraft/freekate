.class Lcom/perm/kate/ForwardedMessagesActivity$3;
.super Ljava/lang/Object;
.source "ForwardedMessagesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ForwardedMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ForwardedMessagesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ForwardedMessagesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ForwardedMessagesActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$3;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 119
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0e01d2

    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    .local v3, "text":Ljava/lang/String;
    const v4, 0x7f0e011f

    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .local v2, "str_mid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 124
    .local v0, "mid":J
    iget-object v4, p0, Lcom/perm/kate/ForwardedMessagesActivity$3;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {v4, v3, v0, v1}, Lcom/perm/kate/ForwardedMessagesActivity;->access$200(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/lang/String;J)V

    goto :goto_0
.end method
