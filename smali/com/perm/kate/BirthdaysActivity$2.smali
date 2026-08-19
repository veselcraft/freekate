.class Lcom/perm/kate/BirthdaysActivity$2;
.super Ljava/lang/Object;
.source "BirthdaysActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdaysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$2;->this$0:Lcom/perm/kate/BirthdaysActivity;

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

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/BirthdaysActivity$2;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
