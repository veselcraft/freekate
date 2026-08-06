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
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 609
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    sget v0, Lcom/perm/kate/EditProfileActivity;->c2:I

    if-ne p3, v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$3600(Lcom/perm/kate/EditProfileActivity;I)V

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$3800(Lcom/perm/kate/EditProfileActivity;)V

    .line 616
    return-void

    .line 611
    :cond_0
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-nez v0, :cond_1

    sget v0, Lcom/perm/kate/EditProfileActivity;->c1:I

    if-ne p3, v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$3600(Lcom/perm/kate/EditProfileActivity;I)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$20;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0, p3}, Lcom/perm/kate/EditProfileActivity;->access$3700(Lcom/perm/kate/EditProfileActivity;I)V

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
    .line 619
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
