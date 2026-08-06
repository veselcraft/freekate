.class Lcom/perm/kate/SearchActivity$17;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 707
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_0

    .line 711
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v2, Lcom/perm/kate/SearchVideoParamsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.adult"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 713
    const-string v1, "com.perm.kate.filters"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "com.perm.kate.sort"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 715
    const-string v1, "com.perm.kate.hd"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 749
    :goto_0
    return-void

    .line 717
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_1

    .line 718
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v2, Lcom/perm/kate/SearchAudioParamsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.performer_only"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 720
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 722
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const-class v2, Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.sort"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 724
    const-string v1, "com.perm.kate.city"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 725
    const-string v1, "com.perm.kate.country"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 726
    const-string v1, "com.perm.kate.hometown"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v1, "com.perm.kate.university_country"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 728
    const-string v1, "com.perm.kate.university"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 729
    const-string v1, "com.perm.kate.university_year"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 730
    const-string v1, "com.perm.kate.sex"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 731
    const-string v1, "com.perm.kate.status"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 732
    const-string v1, "com.perm.kate.age_from"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 733
    const-string v1, "com.perm.kate.age_to"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 734
    const-string v1, "com.perm.kate.birth_day"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 735
    const-string v1, "com.perm.kate.birth_month"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 736
    const-string v1, "com.perm.kate.birth_year"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 737
    const-string v1, "com.perm.kate.online"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 738
    const-string v1, "com.perm.kate.has_photo"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 739
    const-string v1, "com.perm.kate.school_country"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 740
    const-string v1, "com.perm.kate.school_city"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 741
    const-string v1, "com.perm.kate.school"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 742
    const-string v1, "com.perm.kate.school_year"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 743
    const-string v1, "com.perm.kate.religion"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v1, "com.perm.kate.interests"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v1, "com.perm.kate.company"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "com.perm.kate.position"

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$17;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
