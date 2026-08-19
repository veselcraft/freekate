.class Lcom/perm/kate/MessageThreadFragment$13;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .line 1028
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    .line 1031
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const p1, 0x7f09038f

    .line 1032
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const p1, 0x7f09038e

    .line 1033
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const p1, 0x7f09013d

    .line 1034
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    const p1, 0x7f090016

    .line 1035
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    const p1, 0x7f090049

    .line 1036
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    const p1, 0x7f09019e

    .line 1037
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/perm/kate/api/Message;

    .line 1038
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$800(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 1039
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/perm/kate/MessageThreadFragment;->access$2800(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_0

    .line 1040
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1000(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 1041
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/perm/kate/MessageThreadFragment;->access$2900(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    move v8, p3

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/MessageThreadFragment;->access$3000(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    :goto_0
    return-void
.end method
