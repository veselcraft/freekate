.class Lcom/perm/kate/EditProfileActivity$20;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

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

    .line 614
    sget-boolean p1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez p1, :cond_0

    sget p1, Lcom/perm/kate/EditProfileActivity;->c2:I

    if-ne p3, p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/perm/kate/EditProfileActivity;->access$3600(Lcom/perm/kate/EditProfileActivity;I)V

    goto :goto_0

    .line 616
    :cond_0
    sget-boolean p1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-nez p1, :cond_1

    sget p1, Lcom/perm/kate/EditProfileActivity;->c1:I

    if-ne p3, p1, :cond_1

    .line 617
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/EditProfileActivity;->access$3600(Lcom/perm/kate/EditProfileActivity;I)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1, p3}, Lcom/perm/kate/EditProfileActivity;->access$3700(Lcom/perm/kate/EditProfileActivity;I)V

    .line 620
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$3800(Lcom/perm/kate/EditProfileActivity;)V

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
