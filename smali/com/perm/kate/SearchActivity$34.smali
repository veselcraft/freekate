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

    .line 1308
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1311
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    const p3, 0x7f09000a

    .line 1313
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 1315
    iget-object p3, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p3}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p3

    sget-object p4, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p3, p4, :cond_3

    .line 1316
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 1317
    sget-object p4, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string p5, "user_id"

    if-ne p2, p4, :cond_0

    .line 1318
    invoke-virtual {p3, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1319
    :cond_0
    sget-object p4, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne p2, p4, :cond_1

    const-string p2, "chat_id"

    .line 1320
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1321
    :cond_1
    sget-object p4, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne p2, p4, :cond_2

    .line 1322
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    neg-long p1, p1

    invoke-virtual {p3, p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1323
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1324
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 1327
    :cond_3
    sget-object p3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne p2, p3, :cond_4

    .line 1328
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    goto :goto_1

    .line 1329
    :cond_4
    sget-object p3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-wide/16 p4, 0x0

    if-ne p2, p3, :cond_5

    .line 1330
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2, p4, p5, v0, v1}, Lcom/perm/kate/SearchActivity;->access$6700(Lcom/perm/kate/SearchActivity;JJ)V

    goto :goto_1

    .line 1331
    :cond_5
    sget-object p3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    if-ne p2, p3, :cond_6

    .line 1332
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$34;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {p2, v0, v1, p4, p5}, Lcom/perm/kate/SearchActivity;->access$6700(Lcom/perm/kate/SearchActivity;JJ)V

    :cond_6
    :goto_1
    return-void
.end method
