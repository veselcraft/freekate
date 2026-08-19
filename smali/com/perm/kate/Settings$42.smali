.class Lcom/perm/kate/Settings$42;
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

    .line 1154
    iput-object p1, p0, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 1157
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1159
    iget-object v0, p0, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1160
    iget-object v1, p0, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    const v3, 0x7f09010e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v1, v3}, Lcom/perm/kate/Settings;->access$1702(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1161
    iget-object v1, p0, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/kate/Settings;->access$1700(Lcom/perm/kate/Settings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09005a

    .line 1163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 1164
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1165
    new-instance v3, Lcom/perm/kate/Settings$42$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/Settings$42$1;-><init>(Lcom/perm/kate/Settings$42;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1176
    new-instance v0, Lcom/perm/kate/Settings$42$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/Settings$42$2;-><init>(Lcom/perm/kate/Settings$42;)V

    const v1, 0x7f0f0398

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    .line 1194
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1195
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 1196
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1197
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v0
.end method
