.class Lcom/perm/kate/SearchActivity$41;
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

    .line 1515
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

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

    .line 1518
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 1520
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1522
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$000(Lcom/perm/kate/SearchActivity;)V

    :cond_0
    return-void
.end method
