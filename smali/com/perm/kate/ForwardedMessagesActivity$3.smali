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

    .line 115
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$3;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f090049

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p3, 0x7f09038e

    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const p4, 0x7f09019e

    .line 120
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/Message;

    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    .line 124
    iget-object p5, p0, Lcom/perm/kate/ForwardedMessagesActivity$3;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {p5, p1, p3, p4, p2}, Lcom/perm/kate/ForwardedMessagesActivity;->access$200(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/lang/String;JLcom/perm/kate/api/Message;)V

    return-void
.end method
