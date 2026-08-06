.class Lcom/perm/kate/Settings$37;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1052
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1054
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002f

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1055
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v5, v4}, Lcom/perm/kate/Settings;->access$1602(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1056
    iget-object v4, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v4}, Lcom/perm/kate/Settings;->access$1600(Lcom/perm/kate/Settings;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    const v4, 0x7f0e0096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1059
    .local v1, "btnSelect":Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    new-instance v4, Lcom/perm/kate/Settings$37$1;

    invoke-direct {v4, p0}, Lcom/perm/kate/Settings$37$1;-><init>(Lcom/perm/kate/Settings$37;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1071
    const v4, 0x7f070334

    new-instance v5, Lcom/perm/kate/Settings$37$2;

    invoke-direct {v5, p0}, Lcom/perm/kate/Settings$37$2;-><init>(Lcom/perm/kate/Settings$37;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1090
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1091
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1092
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1093
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1094
    return v6
.end method
