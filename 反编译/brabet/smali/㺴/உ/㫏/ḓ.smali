.class public final synthetic L㺴/உ/㫏/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ᆻ:Ljava/util/Date;

.field public final synthetic ḓ:Ljava/lang/String;

.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

.field public final synthetic 䂻:Lcom/facebook/login/DeviceAuthDialog;

.field public final synthetic 䆀:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/ḓ;->䂻:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, L㺴/உ/㫏/ḓ;->㚬:Ljava/lang/String;

    iput-object p3, p0, L㺴/உ/㫏/ḓ;->㺴:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

    iput-object p4, p0, L㺴/உ/㫏/ḓ;->ḓ:Ljava/lang/String;

    iput-object p5, p0, L㺴/உ/㫏/ḓ;->䆀:Ljava/util/Date;

    iput-object p6, p0, L㺴/உ/㫏/ḓ;->ᆻ:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, L㺴/உ/㫏/ḓ;->䂻:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, L㺴/உ/㫏/ḓ;->㚬:Ljava/lang/String;

    iget-object v2, p0, L㺴/உ/㫏/ḓ;->㺴:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

    iget-object v3, p0, L㺴/உ/㫏/ḓ;->ḓ:Ljava/lang/String;

    iget-object v4, p0, L㺴/உ/㫏/ḓ;->䆀:Ljava/util/Date;

    iget-object v5, p0, L㺴/உ/㫏/ḓ;->ᆻ:Ljava/util/Date;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/login/DeviceAuthDialog;->㺴(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Landroid/content/DialogInterface;I)V

    return-void
.end method
