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

    .line 47
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 50
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    if-le p3, p2, :cond_0

    .line 51
    array-length p2, p1

    if-ge p3, p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    aget-object p1, p1, p3

    invoke-static {p2, p1}, Lcom/perm/kate/NewGroupActivity;->access$002(Lcom/perm/kate/NewGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity$1;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupActivity;->access$100(Lcom/perm/kate/NewGroupActivity;)Landroid/widget/Spinner;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
